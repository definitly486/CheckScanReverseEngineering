.class public final Lyads/cf3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/bf3;

.field public static final b:Lyads/bf3;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lyads/bf3;

    sget-object v1, Lyads/e75;->y:Lyads/e75;

    sget-object v2, Lyads/e75;->x:Lyads/e75;

    sget-object v3, Lyads/e75;->z:Lyads/e75;

    sget-object v4, Lyads/e75;->A:Lyads/e75;

    invoke-direct {v0, v1, v2, v3, v4}, Lyads/bf3;-><init>(Lyads/e75;Lyads/e75;Lyads/e75;Lyads/e75;)V

    sput-object v0, Lyads/cf3;->a:Lyads/bf3;

    new-instance v0, Lyads/bf3;

    sget-object v1, Lyads/e75;->n:Lyads/e75;

    sget-object v2, Lyads/e75;->m:Lyads/e75;

    sget-object v3, Lyads/e75;->o:Lyads/e75;

    sget-object v4, Lyads/e75;->p:Lyads/e75;

    invoke-direct {v0, v1, v2, v3, v4}, Lyads/bf3;-><init>(Lyads/e75;Lyads/e75;Lyads/e75;Lyads/e75;)V

    sput-object v0, Lyads/cf3;->b:Lyads/bf3;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lyads/ba;)Lyads/bf3;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget-object p0, Lyads/cf3;->b:Lyads/bf3;

    return-object p0

    :cond_0
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object p0, Lyads/cf3;->a:Lyads/bf3;

    return-object p0
.end method
