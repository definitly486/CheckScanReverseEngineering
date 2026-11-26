.class public final Lyads/n20;
.super Lyads/s20;
.source "SourceFile"


# static fields
.field public static final e:Lyads/n20;

.field public static final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/n20;

    invoke-direct {v0}, Lyads/n20;-><init>()V

    sput-object v0, Lyads/n20;->e:Lyads/n20;

    const-string v0, "setColorAlpha"

    sput-object v0, Lyads/n20;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Ls2a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, v0}, Lyads/s20;-><init>(Lbm3;)V

    return-void
.end method

.method public static final a(Lyads/l20;D)Lyads/l20;
    .locals 1

    invoke-static {p1, p2}, Lyads/u20;->a(D)I

    move-result p1

    iget p0, p0, Lyads/l20;->a:I

    shr-int/lit8 p2, p0, 0x10

    and-int/lit16 p2, p2, 0xff

    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p1, p1, 0x18

    shl-int/lit8 p2, p2, 0x10

    or-int/2addr p1, p2

    shl-int/lit8 p2, v0, 0x8

    or-int/2addr p1, p2

    or-int/2addr p0, p1

    new-instance p1, Lyads/l20;

    invoke-direct {p1, p0}, Lyads/l20;-><init>(I)V

    return-object p1
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    sget-object p0, Lyads/n20;->f:Ljava/lang/String;

    return-object p0
.end method
