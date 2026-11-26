.class public final Lyads/b43;
.super Lyads/no0;
.source "SourceFile"


# static fields
.field public static final c:Lyads/b43;

.field public static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/b43;

    invoke-direct {v0}, Lyads/b43;-><init>()V

    sput-object v0, Lyads/b43;->c:Lyads/b43;

    const-string v0, "getDictOptBoolean"

    sput-object v0, Lyads/b43;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/no0;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    sget-object p0, Lyads/b43;->d:Ljava/lang/String;

    return-object p0
.end method
