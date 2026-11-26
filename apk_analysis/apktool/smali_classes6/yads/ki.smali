.class public final Lyads/ki;
.super Lyads/ci;
.source "SourceFile"


# static fields
.field public static final c:Lyads/ki;

.field public static final d:Ljava/lang/String;

.field public static final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/ki;

    invoke-direct {v0}, Lyads/ki;-><init>()V

    sput-object v0, Lyads/ki;->c:Lyads/ki;

    const-string v0, "getDict"

    sput-object v0, Lyads/ki;->d:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lyads/ki;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/ci;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    sget-object p0, Lyads/ki;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final f()Z
    .locals 0

    sget-boolean p0, Lyads/ki;->e:Z

    return p0
.end method
