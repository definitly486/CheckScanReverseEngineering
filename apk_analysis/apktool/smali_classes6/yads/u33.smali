.class public final Lyads/u33;
.super Lyads/t20;
.source "SourceFile"


# static fields
.field public static final c:Lyads/u33;

.field public static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/u33;

    invoke-direct {v0}, Lyads/u33;-><init>()V

    sput-object v0, Lyads/u33;->c:Lyads/u33;

    const-string v0, "getDictColor"

    sput-object v0, Lyads/u33;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/t20;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    sget-object p0, Lyads/u33;->d:Ljava/lang/String;

    return-object p0
.end method
