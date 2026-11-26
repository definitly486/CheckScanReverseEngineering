.class public final Lyads/g63;
.super Lyads/k63;
.source "SourceFile"


# static fields
.field public static final b:Lyads/g63;

.field public static final c:Ljava/lang/String;

.field public static final d:Lyads/xo2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/g63;

    invoke-direct {v0}, Lyads/g63;-><init>()V

    sput-object v0, Lyads/g63;->b:Lyads/g63;

    const-string v0, "getStoredArrayValue"

    sput-object v0, Lyads/g63;->c:Ljava/lang/String;

    sget-object v0, Lyads/xo2;->k:Lyads/xo2;

    sput-object v0, Lyads/g63;->d:Lyads/xo2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/k63;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    sget-object p0, Lyads/g63;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final d()Lyads/xo2;
    .locals 0

    sget-object p0, Lyads/g63;->d:Lyads/xo2;

    return-object p0
.end method
