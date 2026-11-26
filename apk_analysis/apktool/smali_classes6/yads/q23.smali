.class public final Lyads/q23;
.super Lyads/di;
.source "SourceFile"


# static fields
.field public static final c:Lyads/q23;

.field public static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/q23;

    invoke-direct {v0}, Lyads/q23;-><init>()V

    sput-object v0, Lyads/q23;->c:Lyads/q23;

    const-string v0, "getArrayFromArray"

    sput-object v0, Lyads/q23;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/di;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    sget-object p0, Lyads/q23;->d:Ljava/lang/String;

    return-object p0
.end method
