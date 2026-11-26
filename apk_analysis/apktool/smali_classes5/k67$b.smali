.class public final Lk67$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk67$n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk67;->c(Lqu1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lqu1;


# direct methods
.method public constructor <init>(Lqu1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk67$b;->a:Lqu1;

    return-void
.end method


# virtual methods
.method public final a(Lk67$x;)V
    .locals 0

    iget-object p1, p1, Lk67$x;->a:Lcm1;

    iget-object p0, p0, Lk67$b;->a:Lqu1;

    invoke-interface {p1, p0}, Le98;->c(Lqu1;)V

    return-void
.end method
