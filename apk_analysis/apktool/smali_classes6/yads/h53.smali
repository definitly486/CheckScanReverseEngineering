.class public final Lyads/h53;
.super Lyads/mo0;
.source "SourceFile"


# static fields
.field public static final c:Lyads/h53;

.field public static final d:Ljava/lang/String;

.field public static final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/h53;

    invoke-direct {v0}, Lyads/h53;-><init>()V

    sput-object v0, Lyads/h53;->c:Lyads/h53;

    const-string v0, "getNumber"

    sput-object v0, Lyads/h53;->d:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lyads/h53;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/mo0;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    sget-object p0, Lyads/h53;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final f()Z
    .locals 0

    sget-boolean p0, Lyads/h53;->e:Z

    return p0
.end method
