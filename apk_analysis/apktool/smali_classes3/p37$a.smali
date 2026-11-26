.class public final Lp37$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp37;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lp37;


# direct methods
.method public constructor <init>(Lp37;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp37$a;->b:Lp37;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lp37$a;->b:Lp37;

    iget-object v0, p0, Lp37;->d:Lyo4;

    invoke-interface {v0, p0}, Lyo4;->a(Lup4;)V

    return-void
.end method
