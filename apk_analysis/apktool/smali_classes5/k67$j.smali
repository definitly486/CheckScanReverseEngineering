.class public final Lk67$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk67$n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk67;->x(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "j"
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lk67;


# direct methods
.method public constructor <init>(Lk67;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk67$j;->b:Lk67;

    iput-object p2, p0, Lk67$j;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lk67$x;)V
    .locals 2

    iget-object v0, p1, Lk67$x;->a:Lcm1;

    iget-object v1, p0, Lk67$j;->b:Lk67;

    iget-object v1, v1, Lk67;->b:Lra5;

    iget-object p0, p0, Lk67$j;->a:Ljava/lang/Object;

    iget-object v1, v1, Lra5;->d:Lns6$a;

    invoke-virtual {v1, p0}, Lns6$a;->b(Ljava/lang/Object;)Lms6;

    move-result-object p0

    invoke-interface {v0, p0}, Le98;->d(Ljava/io/InputStream;)V

    iget-object p0, p1, Lk67$x;->a:Lcm1;

    invoke-interface {p0}, Le98;->flush()V

    return-void
.end method
