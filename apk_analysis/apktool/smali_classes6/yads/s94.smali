.class public final Lyads/s94;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Lyads/r94;

.field public static volatile f:Lyads/s94;


# instance fields
.field public final a:Ljava/lang/Object;

.field public volatile b:Z

.field public final c:Lyads/l2;

.field public final d:Lyads/cu4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/r94;

    invoke-direct {v0}, Lyads/r94;-><init>()V

    sput-object v0, Lyads/s94;->e:Lyads/r94;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/s94;->a:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyads/s94;->b:Z

    new-instance v0, Lyads/l2;

    invoke-direct {v0}, Lyads/l2;-><init>()V

    iput-object v0, p0, Lyads/s94;->c:Lyads/l2;

    new-instance v0, Lyads/cu4;

    invoke-direct {v0}, Lyads/cu4;-><init>()V

    iput-object v0, p0, Lyads/s94;->d:Lyads/cu4;

    return-void
.end method
