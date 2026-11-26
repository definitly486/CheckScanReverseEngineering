.class public final Lyads/o23;
.super Lyads/ai;
.source "SourceFile"


# static fields
.field public static final c:Lyads/o23;

.field public static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/o23;

    invoke-direct {v0}, Lyads/o23;-><init>()V

    sput-object v0, Lyads/o23;->c:Lyads/o23;

    const-string v0, "getArrayBoolean"

    sput-object v0, Lyads/o23;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/ai;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    sget-object p0, Lyads/o23;->d:Ljava/lang/String;

    return-object p0
.end method
