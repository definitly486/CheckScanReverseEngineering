.class public final synthetic Ldd0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;


# direct methods
.method public synthetic constructor <init>(Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldd0;->b:Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    sget v0, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->i:I

    iget-object p0, p0, Ldd0;->b:Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;

    invoke-virtual {p0}, Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator;->d()V

    return-void
.end method
