.class public final Lyads/bm3;
.super Lyads/vo2;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "Failed to evaluate ["

    const-string v1, "]. Integer overflow."

    invoke-static {v0, p1, v1}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lyads/vo2;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lyads/bm3;-><init>(Ljava/lang/String;)V

    return-void
.end method
