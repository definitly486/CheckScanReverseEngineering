.class public final synthetic Lnx4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lox4$a;


# instance fields
.field public final synthetic a:Lox4;

.field public final synthetic b:F


# direct methods
.method public synthetic constructor <init>(Lox4;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnx4;->a:Lox4;

    iput p2, p0, Lnx4;->b:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lnx4;->a:Lox4;

    iget p0, p0, Lnx4;->b:F

    invoke-virtual {v0, p0}, Lox4;->w(F)V

    return-void
.end method
