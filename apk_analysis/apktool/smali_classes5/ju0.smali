.class public final synthetic Lju0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldm3;


# instance fields
.field public final synthetic b:Lmu0;


# direct methods
.method public synthetic constructor <init>(Lmu0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lju0;->b:Lmu0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lbm7;

    new-instance p2, Llu0;

    iget-object p0, p0, Lju0;->b:Lmu0;

    invoke-direct {p2, p3, p0, p1}, Llu0;-><init>(Ljava/lang/Object;Lmu0;Lbm7;)V

    return-object p2
.end method
