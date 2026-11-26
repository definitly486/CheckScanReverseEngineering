.class public final synthetic Lax4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lox4$a;


# instance fields
.field public final synthetic a:Lox4;

.field public final synthetic b:F

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Lox4;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lax4;->a:Lox4;

    iput p2, p0, Lax4;->b:F

    iput p3, p0, Lax4;->c:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lax4;->b:F

    iget v1, p0, Lax4;->c:F

    iget-object p0, p0, Lax4;->a:Lox4;

    invoke-virtual {p0, v0, v1}, Lox4;->t(FF)V

    return-void
.end method
