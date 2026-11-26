.class public final synthetic Lcx4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lox4$a;


# instance fields
.field public final synthetic a:Lox4;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lox4;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcx4;->a:Lox4;

    iput p2, p0, Lcx4;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcx4;->a:Lox4;

    iget p0, p0, Lcx4;->b:I

    invoke-virtual {v0, p0}, Lox4;->o(I)V

    return-void
.end method
