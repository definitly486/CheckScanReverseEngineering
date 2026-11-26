.class public interface abstract Lk61;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmz7;
    .param p1    # I
        .annotation runtime Lk46;
            value = "areaId"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lk46;
            value = "webViewType"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Llv6;
            value = "campaignCode"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Llv6;
            value = "tab"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Llv6;
            value = "target"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lmz7<",
            "Lwt0;",
            ">;"
        }
    .end annotation

    .annotation runtime Lgn3;
        value = "api/v2.1/area/{areaId}/sections/webView/{webViewType}"
    .end annotation
.end method
