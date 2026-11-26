.class public final Lyads/qe5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/mn2;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lyads/mn2;

    invoke-direct {v0}, Lyads/mn2;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/qe5;->a:Lyads/mn2;

    return-void
.end method

.method public static final a(Lyads/k35;)Ljava/lang/CharSequence;
    .locals 2

    .line 20
    invoke-interface {p0}, Lyads/k35;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lyads/k35;->getValue()Ljava/lang/String;

    move-result-object p0

    const-string v1, "="

    .line 21
    invoke-static {v0, v1, p0}, Lcg;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lyads/vn2;)Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lyads/vn2;->b:Ljava/util/List;

    new-instance v5, Loi5;

    const/4 p0, 0x3

    invoke-direct {v5, p0}, Loi5;-><init>(I)V

    const/4 v4, 0x0

    const/16 v6, 0x1e

    const-string v1, "&"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v6}, Lqn1;->a0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ILnl3;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
