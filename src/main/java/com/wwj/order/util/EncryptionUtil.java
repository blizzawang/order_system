package com.wwj.order.util;

import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.Base64;
import java.util.Date;

/**
 * 对字符串进行加密的工具类
 */
public class EncryptionUtil {

    /**
     * MD5加密
     * @param source
     * @return
     */
    public static String md5(String source){
        //判断source是否合法
        if(source == null || source.length() == 0){
            //抛出字异常
            throw new RuntimeException(SystemConstant.MESSAGE_STRING_INVALIDATE);
        }
        String algorithm = "md5";
        try {
            //获取MessageDigest对象
            MessageDigest messageDigest = MessageDigest.getInstance(algorithm);
            //获取明文对应的字节数组
            byte[] input = source.getBytes();
            //加密
            byte[] output = messageDigest.digest(input);
            //创建BigInteger对象
            int signum = 1;
            BigInteger bigInteger = new BigInteger(signum, output);
            //按照十六进制将bigInteger的值转为字符串
            int radix = 16;
            String encoded = bigInteger.toString(radix).toUpperCase();
            return encoded;
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * Base64加密
     * @return
     */
    public static String base64_encode(String source){
        Base64.Encoder encoder = Base64.getEncoder();
        byte[] bytes = source.getBytes();
        return encoder.encodeToString(bytes);
    }

    /**
     * Base64解密
     * @return
     */
    public static String base64_decoder(String source){
        Base64.Decoder decoder = Base64.getDecoder();
        try {
            return new String(decoder.decode(source),"UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return null;
    }
}
