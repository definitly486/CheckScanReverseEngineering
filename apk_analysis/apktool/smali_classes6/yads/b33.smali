.class public final Lyads/b33;
.super Lyads/zi;
.source "SourceFile"


# static fields
.field public static final d:Lyads/b33;

.field public static final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/b33;

    invoke-direct {v0}, Lyads/b33;-><init>()V

    sput-object v0, Lyads/b33;->d:Lyads/b33;

    const-string v0, "getArrayOptUrl"

    sput-object v0, Lyads/b33;->e:Ljava/lang/String;

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

    sget-object p0, Lyads/b33;->e:Ljava/lang/String;

    return-object p0
.end method
