.class public final Lyads/n53;
.super Lyads/si;
.source "SourceFile"


# static fields
.field public static final c:Lyads/n53;

.field public static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/n53;

    invoke-direct {v0}, Lyads/n53;-><init>()V

    sput-object v0, Lyads/n53;->c:Lyads/n53;

    const-string v0, "getOptBooleanFromArray"

    sput-object v0, Lyads/n53;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/si;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    sget-object p0, Lyads/n53;->d:Ljava/lang/String;

    return-object p0
.end method
