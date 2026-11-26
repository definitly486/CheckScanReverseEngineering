.class public final Lyads/p53;
.super Lyads/ti;
.source "SourceFile"


# static fields
.field public static final c:Lyads/p53;

.field public static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/p53;

    invoke-direct {v0}, Lyads/p53;-><init>()V

    sput-object v0, Lyads/p53;->c:Lyads/p53;

    const-string v0, "getOptColorFromArray"

    sput-object v0, Lyads/p53;->d:Ljava/lang/String;

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

    sget-object p0, Lyads/p53;->d:Ljava/lang/String;

    return-object p0
.end method
