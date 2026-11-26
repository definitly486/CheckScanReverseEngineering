.class public final Lyads/z75;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static volatile b:Lyads/z75;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/z75;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Lyads/qn4;->b:Lyads/e85;

    if-eqz v0, :cond_0

    new-instance v1, Lup0;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Lup0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lyads/e85;->a(Lyads/d85;)V

    :cond_0
    return-void
.end method

.method public static final a(Ljava/lang/Object;Lyads/r75;)Z
    .locals 0

    .line 14
    iget-object p1, p1, Lyads/r75;->q:Ljava/lang/Object;

    .line 15
    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
