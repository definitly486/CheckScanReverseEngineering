.class public final Lyads/w23;
.super Lyads/ti;
.source "SourceFile"


# static fields
.field public static final c:Lyads/w23;

.field public static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/w23;

    invoke-direct {v0}, Lyads/w23;-><init>()V

    sput-object v0, Lyads/w23;->c:Lyads/w23;

    const-string v0, "getArrayOptColor"

    sput-object v0, Lyads/w23;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/ti;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    sget-object p0, Lyads/w23;->d:Ljava/lang/String;

    return-object p0
.end method
