.class public final Lg6$a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg6$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg6$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final a:Lg6$a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg6$a$c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg6$a$c;->a:Lg6$a$c;

    return-void
.end method
