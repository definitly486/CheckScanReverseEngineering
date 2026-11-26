.class public final Lyads/a43;
.super Lyads/mo0;
.source "SourceFile"


# static fields
.field public static final c:Lyads/a43;

.field public static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/a43;

    invoke-direct {v0}, Lyads/a43;-><init>()V

    sput-object v0, Lyads/a43;->c:Lyads/a43;

    const-string v0, "getDictNumber"

    sput-object v0, Lyads/a43;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/mo0;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    sget-object p0, Lyads/a43;->d:Ljava/lang/String;

    return-object p0
.end method
