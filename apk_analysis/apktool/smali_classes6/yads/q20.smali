.class public final Lyads/q20;
.super Lyads/s20;
.source "SourceFile"


# static fields
.field public static final e:Lyads/q20;

.field public static final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/q20;

    invoke-direct {v0}, Lyads/q20;-><init>()V

    sput-object v0, Lyads/q20;->e:Lyads/q20;

    const-string v0, "setColorBlue"

    sput-object v0, Lyads/q20;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    new-instance v0, Lwc7;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lwc7;-><init>(I)V

    invoke-direct {p0, v0}, Lyads/s20;-><init>(Lbm3;)V

    return-void
.end method

.method public static final a(Lyads/l20;D)Lyads/l20;
    .locals 2

    iget p0, p0, Lyads/l20;->a:I

    ushr-int/lit8 v0, p0, 0x18

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 p0, p0, 0x8

    and-int/lit16 p0, p0, 0xff

    invoke-static {p1, p2}, Lyads/u20;->a(D)I

    move-result p1

    shl-int/lit8 p2, v0, 0x18

    shl-int/lit8 v0, v1, 0x10

    or-int/2addr p2, v0

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, p2

    or-int/2addr p0, p1

    new-instance p1, Lyads/l20;

    invoke-direct {p1, p0}, Lyads/l20;-><init>(I)V

    return-object p1
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    sget-object p0, Lyads/q20;->f:Ljava/lang/String;

    return-object p0
.end method
