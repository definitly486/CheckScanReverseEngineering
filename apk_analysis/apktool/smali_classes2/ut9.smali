.class public final Lut9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lfh8;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lut9;->a:Landroid/content/Context;

    new-instance p1, Lut9$a;

    invoke-direct {p1, p0}, Lut9$a;-><init>(Lut9;)V

    new-instance v0, Lfh8;

    invoke-direct {v0, p1}, Lfh8;-><init>(Lll3;)V

    iput-object v0, p0, Lut9;->b:Lfh8;

    return-void
.end method
