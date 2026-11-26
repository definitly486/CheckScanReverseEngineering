.class public final Lyads/gk0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/vc0;

.field public final b:I

.field public final c:Lyads/dz;


# direct methods
.method public constructor <init>(Lyads/vc0;)V
    .locals 1

    sget-object v0, Lyads/nv;->k:Lyads/dz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/gk0;->c:Lyads/dz;

    iput-object p1, p0, Lyads/gk0;->a:Lyads/vc0;

    const/4 p1, 0x1

    iput p1, p0, Lyads/gk0;->b:I

    return-void
.end method
