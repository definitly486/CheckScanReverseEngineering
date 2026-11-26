.class public final Lff7;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lff7$a;,
        Lff7$b;
    }
.end annotation


# static fields
.field public static final a:Lff7$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    new-instance v0, Lff7$b;

    invoke-direct {v0}, Lff7$a;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lff7$a;

    invoke-direct {v0}, Lff7$a;-><init>()V

    :goto_0
    sput-object v0, Lff7;->a:Lff7$a;

    return-void
.end method
