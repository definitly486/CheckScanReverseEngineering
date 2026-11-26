.class public final Llg5$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llg5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llg5$c$a;
    }
.end annotation


# instance fields
.field public final a:Ljv3;

.field public final b:Lg37;


# direct methods
.method public constructor <init>(Ljv3;Lg37;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llg5$c;->a:Ljv3;

    iput-object p2, p0, Llg5$c;->b:Lg37;

    return-void
.end method
