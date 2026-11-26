.class public final Lyads/yp3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/lang/Object;

.field public static d:Lyads/yp3;


# instance fields
.field public final a:Lyads/zz4;

.field public final b:Lyads/b13;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/yp3;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    new-instance v0, Lyads/zz4;

    invoke-direct {v0}, Lyads/zz4;-><init>()V

    new-instance v1, Lyads/b13;

    invoke-direct {v1}, Lyads/b13;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/yp3;->a:Lyads/zz4;

    iput-object v1, p0, Lyads/yp3;->b:Lyads/b13;

    return-void
.end method
