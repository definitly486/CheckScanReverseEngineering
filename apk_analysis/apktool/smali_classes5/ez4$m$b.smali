.class public final Lez4$m$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lez4$m;->f(Lra5;Lio/grpc/b;)Lrl1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lez4$m;


# direct methods
.method public constructor <init>(Lez4$m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lez4$m$b;->b:Lez4$m;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lez4$m$b;->b:Lez4$m;

    iget-object p0, p0, Lez4$m;->d:Lez4;

    invoke-virtual {p0}, Lez4;->g()V

    return-void
.end method
