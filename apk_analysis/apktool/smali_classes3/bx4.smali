.class public final synthetic Lbx4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lox4$a;


# instance fields
.field public final synthetic a:Lox4;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lox4;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbx4;->a:Lox4;

    iput p2, p0, Lbx4;->b:I

    iput p3, p0, Lbx4;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lbx4;->b:I

    iget v1, p0, Lbx4;->c:I

    iget-object p0, p0, Lbx4;->a:Lox4;

    invoke-virtual {p0, v0, v1}, Lox4;->q(II)V

    return-void
.end method
