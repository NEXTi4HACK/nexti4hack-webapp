package com.nexti4hack.webapp

import org.mybatis.spring.annotation.MapperScan
import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@MapperScan("com.nexti4hack")
@SpringBootApplication(scanBasePackages=["com.nexti4hack"])
class WebappApplication

fun main(args: Array<String>) {
	runApplication<WebappApplication>(*args)
}
