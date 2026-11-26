.class public final Lyads/f43;
.super Lyads/ro0;
.source "SourceFile"


# static fields
.field public static final c:Lyads/f43;

.field public static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/f43;

    invoke-direct {v0}, Lyads/f43;-><init>()V

    sput-object v0, Lyads/f43;->c:Lyads/f43;

    const-string v0, "getDictOptNumber"

    sput-object v0, Lyads/f43;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/ro0;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    sget-object p0, Lyads/f43;->d:Ljava/lang/String;

    return-object p0
.end method
