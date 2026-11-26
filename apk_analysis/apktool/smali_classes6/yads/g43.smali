.class public final Lyads/g43;
.super Lyads/so0;
.source "SourceFile"


# static fields
.field public static final c:Lyads/g43;

.field public static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/g43;

    invoke-direct {v0}, Lyads/g43;-><init>()V

    sput-object v0, Lyads/g43;->c:Lyads/g43;

    const-string v0, "getDictOptString"

    sput-object v0, Lyads/g43;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/so0;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    sget-object p0, Lyads/g43;->d:Ljava/lang/String;

    return-object p0
.end method
