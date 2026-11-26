.class public final Lyads/y53;
.super Lyads/ro0;
.source "SourceFile"


# static fields
.field public static final c:Lyads/y53;

.field public static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/y53;

    invoke-direct {v0}, Lyads/y53;-><init>()V

    sput-object v0, Lyads/y53;->c:Lyads/y53;

    const-string v0, "getOptNumberFromDict"

    sput-object v0, Lyads/y53;->d:Ljava/lang/String;

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

    sget-object p0, Lyads/y53;->d:Ljava/lang/String;

    return-object p0
.end method
