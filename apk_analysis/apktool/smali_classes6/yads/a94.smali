.class public final Lyads/a94;
.super Lyads/vo2;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3

    invoke-static {p2}, Lyads/wo2;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "("

    const-string v1, ")\' is missing."

    const-string v2, "Function \'"

    invoke-static {v2, p1, v0, p2, v1}, Ln2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lyads/vo2;-><init>(Ljava/lang/String;)V

    return-void
.end method
