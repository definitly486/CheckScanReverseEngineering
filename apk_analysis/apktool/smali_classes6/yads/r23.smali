.class public final Lyads/r23;
.super Lyads/ei;
.source "SourceFile"


# static fields
.field public static final c:Lyads/r23;

.field public static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/r23;

    invoke-direct {v0}, Lyads/r23;-><init>()V

    sput-object v0, Lyads/r23;->c:Lyads/r23;

    const-string v0, "getArrayFromDict"

    sput-object v0, Lyads/r23;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/ei;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    sget-object p0, Lyads/r23;->d:Ljava/lang/String;

    return-object p0
.end method
