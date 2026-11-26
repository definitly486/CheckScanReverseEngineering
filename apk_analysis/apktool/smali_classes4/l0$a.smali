.class public final Ll0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final c:Ll0$a;

.field public static final d:Ll0$a;


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Lm0;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sput-object v1, Ll0$a;->d:Ll0$a;

    sput-object v1, Ll0$a;->c:Ll0$a;

    return-void

    :cond_0
    new-instance v0, Ll0$a;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Ll0$a;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Ll0$a;->d:Ll0$a;

    new-instance v0, Ll0$a;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ll0$a;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Ll0$a;->c:Ll0$a;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Ll0$a;->a:Z

    iput-object p2, p0, Ll0$a;->b:Ljava/lang/Throwable;

    return-void
.end method
