.class public final Lq36;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lq36;

.field public static final d:Lq36;


# instance fields
.field public final a:Z

.field public final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lq36;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lq36;-><init>(ZZ)V

    sput-object v0, Lq36;->c:Lq36;

    new-instance v0, Lq36;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lq36;-><init>(ZZ)V

    sput-object v0, Lq36;->d:Lq36;

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lq36;->a:Z

    iput-boolean p2, p0, Lq36;->b:Z

    return-void
.end method
