.class public final Lyea;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyea$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/app/Application;

.field public b:Lyea$a;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lyea;->b:Lyea$a;

    iput-object p1, p0, Lyea;->a:Landroid/app/Application;

    return-void
.end method
