.class public final Lyads/x53;
.super Lyads/xi;
.source "SourceFile"


# static fields
.field public static final c:Lyads/x53;

.field public static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/x53;

    invoke-direct {v0}, Lyads/x53;-><init>()V

    sput-object v0, Lyads/x53;->c:Lyads/x53;

    const-string v0, "getOptNumberFromArray"

    sput-object v0, Lyads/x53;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/xi;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    sget-object p0, Lyads/x53;->d:Ljava/lang/String;

    return-object p0
.end method
