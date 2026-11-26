.class public final synthetic Llr9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/tt3;


# instance fields
.field public final synthetic b:Lyads/ne;

.field public final synthetic c:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lyads/ne;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llr9;->b:Lyads/ne;

    iput-object p2, p0, Llr9;->c:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Llr9;->c:Ljava/lang/Exception;

    check-cast p1, Lyads/pe;

    iget-object p0, p0, Llr9;->b:Lyads/ne;

    invoke-static {p0, v0, p1}, Lyads/cj0;->c(Lyads/ne;Ljava/lang/Exception;Lyads/pe;)V

    return-void
.end method
