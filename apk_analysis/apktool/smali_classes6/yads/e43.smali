.class public final Lyads/e43;
.super Lyads/qo0;
.source "SourceFile"


# static fields
.field public static final c:Lyads/e43;

.field public static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/e43;

    invoke-direct {v0}, Lyads/e43;-><init>()V

    sput-object v0, Lyads/e43;->c:Lyads/e43;

    const-string v0, "getDictOptInteger"

    sput-object v0, Lyads/e43;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/qo0;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    sget-object p0, Lyads/e43;->d:Ljava/lang/String;

    return-object p0
.end method
