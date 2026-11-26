.class public final Lyads/p20;
.super Lyads/r20;
.source "SourceFile"


# static fields
.field public static final e:Lyads/p20;

.field public static final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/p20;

    invoke-direct {v0}, Lyads/p20;-><init>()V

    sput-object v0, Lyads/p20;->e:Lyads/p20;

    const-string v0, "getColorBlue"

    sput-object v0, Lyads/p20;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    new-instance v0, Lay;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lay;-><init>(I)V

    invoke-direct {p0, v0}, Lyads/r20;-><init>(Lnl3;)V

    return-void
.end method

.method public static final a(Lyads/l20;)I
    .locals 0

    iget p0, p0, Lyads/l20;->a:I

    and-int/lit16 p0, p0, 0xff

    return p0
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    sget-object p0, Lyads/p20;->f:Ljava/lang/String;

    return-object p0
.end method
