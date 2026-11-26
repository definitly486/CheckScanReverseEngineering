.class public final Lyads/b63;
.super Lyads/zi;
.source "SourceFile"


# static fields
.field public static final d:Lyads/b63;

.field public static final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/b63;

    invoke-direct {v0}, Lyads/b63;-><init>()V

    sput-object v0, Lyads/b63;->d:Lyads/b63;

    const-string v0, "getOptUrlFromArray"

    sput-object v0, Lyads/b63;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/zi;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    sget-object p0, Lyads/b63;->e:Ljava/lang/String;

    return-object p0
.end method
