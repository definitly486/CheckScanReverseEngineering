.class public final Lyads/m20;
.super Lyads/r20;
.source "SourceFile"


# static fields
.field public static final e:Lyads/m20;

.field public static final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/m20;

    invoke-direct {v0}, Lyads/m20;-><init>()V

    sput-object v0, Lyads/m20;->e:Lyads/m20;

    const-string v0, "getColorAlpha"

    sput-object v0, Lyads/m20;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    new-instance v0, Lsy2;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lsy2;-><init>(I)V

    invoke-direct {p0, v0}, Lyads/r20;-><init>(Lnl3;)V

    return-void
.end method

.method public static final a(Lyads/l20;)I
    .locals 0

    iget p0, p0, Lyads/l20;->a:I

    ushr-int/lit8 p0, p0, 0x18

    return p0
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    sget-object p0, Lyads/m20;->f:Ljava/lang/String;

    return-object p0
.end method
