.class public final Lyads/oi;
.super Lyads/dj;
.source "SourceFile"


# static fields
.field public static final c:Lyads/oi;

.field public static final d:Ljava/lang/String;

.field public static final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/oi;

    invoke-direct {v0}, Lyads/oi;-><init>()V

    sput-object v0, Lyads/oi;->c:Lyads/oi;

    const-string v0, "getUrl"

    sput-object v0, Lyads/oi;->d:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lyads/oi;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/dj;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    sget-object p0, Lyads/oi;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final f()Z
    .locals 0

    sget-boolean p0, Lyads/oi;->e:Z

    return p0
.end method
