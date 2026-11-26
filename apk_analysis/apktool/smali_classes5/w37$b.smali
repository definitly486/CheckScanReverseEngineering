.class public final Lw37$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw37;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic b:Lw37;


# direct methods
.method public constructor <init>(Lw37;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw37$b;->b:Lw37;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lw37$b;->b:Lw37;

    iget-object v0, p0, Lw37;->b:Lch8;

    new-instance v1, Lw37$a;

    invoke-direct {v1, p0}, Lw37$a;-><init>(Lw37;)V

    invoke-virtual {v0, v1}, Lch8;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
