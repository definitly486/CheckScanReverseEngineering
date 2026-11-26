.class public final Lyads/w20;
.super Lyads/s20;
.source "SourceFile"


# static fields
.field public static final e:Lyads/w20;

.field public static final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/w20;

    invoke-direct {v0}, Lyads/w20;-><init>()V

    sput-object v0, Lyads/w20;->e:Lyads/w20;

    const-string v0, "setColorGreen"

    sput-object v0, Lyads/w20;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lofa;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, v0}, Lyads/s20;-><init>(Lbm3;)V

    return-void
.end method

.method public static final a(Lyads/l20;D)Lyads/l20;
    .locals 2

    iget v0, p0, Lyads/l20;->a:I

    ushr-int/lit8 v1, v0, 0x18

    shr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-static {p1, p2}, Lyads/u20;->a(D)I

    move-result p1

    iget p0, p0, Lyads/l20;->a:I

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p2, v1, 0x18

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p2, v0

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, p2

    or-int/2addr p0, p1

    new-instance p1, Lyads/l20;

    invoke-direct {p1, p0}, Lyads/l20;-><init>(I)V

    return-object p1
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    sget-object p0, Lyads/w20;->f:Ljava/lang/String;

    return-object p0
.end method
