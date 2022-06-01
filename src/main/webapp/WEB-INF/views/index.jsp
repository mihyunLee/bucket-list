<%--
  Created by IntelliJ IDEA.
  User: 201712029@office.induk.ac.kr
  Date: 2021-06-30
  Time: 오전 11:40
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html lang="ko">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp" %>
<main class="flex flex-col">
    <div
            class="mt-1 p-10 md:p-16 xl:p-40 bg-white grid grid-cols-2 grid-rows-3 items-center"
    >
        <div class="row-span-1">
            <h1 class="text-lg sm:text-xl md:text-3xl xl:text-4xl">
                <span class="block"> 죽기 전 </span>
                <span class="mt-2 block">내가 이루고 싶은 것들을 모아서,</span>
                <span class="mt-2 block"> Mybucket </span>
            </h1>
        </div>
        <div class="col-start-1 row-span-1">
            <p class="text-sm md:text-base xl:text-xl text-gray-600">
                여행, 직무, 자기계발, 취미 등 계획만 세워두었던 다양한 버킷
                리스트를<br/>
                Mybucket과 함께 달성해보세요.
            </p>
        </div>
        <div class="col-start-2 row-start-1 row-span-3 justify-self-center">
            <img src="<c:url value="/images/main-sample.png"/>" alt="main"/>
        </div>
        <c:choose>
            <c:when test="${empty sessionScope.member}">
                <div class="row-span-1">
                    <a class="px-6 py-3 m-1 mb-2 leading-loose text-sm md:text-base xl:text-xl text-center text-white font-semibold bg-mainGreen2-100 hover:bg-mainGreen2-200 rounded-xl"
                       href="<c:url value="/bucketlist/members/signup"/>"
                    >가입하고 버킷리스트 달성하기</a>
                </div>
            </c:when>
            <c:otherwise>
                <div class="row-span-1">
                    <a class="px-6 py-3 m-1 mb-2 leading-loose text-sm md:text-base xl:text-xl text-center text-white font-semibold bg-mainGreen2-100 hover:bg-mainGreen2-200 rounded-xl"
                       href="<c:url value="/bucketlist/dashboard"/>"
                    >버킷리스트 목록으로 이동하기</a>
                </div>
            </c:otherwise>
        </c:choose>


    </div>
</main>
</body>
</html>
