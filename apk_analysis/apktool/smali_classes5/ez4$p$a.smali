.class public final Lez4$p$a;
.super Lp94$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lez4$p;->h(Lio/grpc/h$l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lio/grpc/h$l;

.field public final synthetic b:Lez4$p;


# direct methods
.method public constructor <init>(Lez4$p;Lio/grpc/h$l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lez4$p$a;->b:Lez4$p;

    iput-object p2, p0, Lez4$p$a;->a:Lio/grpc/h$l;

    return-void
.end method
