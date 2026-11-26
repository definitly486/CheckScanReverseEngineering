.class public final Lg6$a$b;
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
    name = "b"
.end annotation


# static fields
.field public static final a:Lg6$a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg6$a$b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg6$a$b;->a:Lg6$a$b;

    return-void
.end method
