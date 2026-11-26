.class public final Lyads/s23;
.super Lyads/pi;
.source "SourceFile"


# static fields
.field public static final c:Lyads/s23;

.field public static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/s23;

    invoke-direct {v0}, Lyads/s23;-><init>()V

    sput-object v0, Lyads/s23;->c:Lyads/s23;

    const-string v0, "getArrayInteger"

    sput-object v0, Lyads/s23;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/pi;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    sget-object p0, Lyads/s23;->d:Ljava/lang/String;

    return-object p0
.end method
