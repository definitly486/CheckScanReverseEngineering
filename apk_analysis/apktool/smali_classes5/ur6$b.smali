.class public final Lur6$b;
.super Lur6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lur6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lur6$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lur6$b;

    invoke-direct {v0}, Lur6;-><init>()V

    sput-object v0, Lur6$b;->a:Lur6$b;

    return-void
.end method
