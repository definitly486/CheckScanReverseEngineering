.class public final Lyads/v20;
.super Lyads/r20;
.source "SourceFile"


# static fields
.field public static final e:Lyads/v20;

.field public static final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/v20;

    invoke-direct {v0}, Lyads/v20;-><init>()V

    sput-object v0, Lyads/v20;->e:Lyads/v20;

    const-string v0, "getColorGreen"

    sput-object v0, Lyads/v20;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    new-instance v0, Lws0;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lws0;-><init>(I)V

    invoke-direct {p0, v0}, Lyads/r20;-><init>(Lnl3;)V

    return-void
.end method

.method public static final a(Lyads/l20;)I
    .locals 0

    iget p0, p0, Lyads/l20;->a:I

    shr-int/lit8 p0, p0, 0x8

    and-int/lit16 p0, p0, 0xff

    return p0
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    sget-object p0, Lyads/v20;->f:Ljava/lang/String;

    return-object p0
.end method
